# 使用方式
注意在pos_pub_scripts中修改相机外参
<!-- 1.启动坐标相关发布节点 -->
roslaunch robo_vision pub.launch
<!-- 2.启动robo_vsion视觉节点 -->
rosrun robo_vision robo_vision.py --record /media/nvidia/Index_repo/Guide_dog_exp_record/realsenseD435/test1.bag
或
rosrun robo_vision robo_vision.py --record /media/nvidia/Index_repo/Guide_dog_exp_record/realsenseD435/test1.bag
<!-- 3.启动rosbag记录机器人速度输入序列，人位置序列和角度序列(记得加上手柄输入！) -->
rosbag record -o /media/nvidia/Index_repo/Guide_dog_exp_record/rosbag/test1.bag /guide_dog/robo_vision/people_position_camera /guide_dog/robo_vision/people_position_robot /guide_dog/robo_vision/people_robot_angle


# 注意事项
本工作空间的系统环境是ROS Melodic，默认使用Python2.7，而Yolo相关组件需要Ptyhon3；因此本工作空间采用每个Package单独catkin_make并指定编译器的方式使其兼容
Pythn2和Python3:
catkin_make package -DCATKIN_WHITELIST_PACKAGES="Python2_package1;Python2_package2;Python2_package3" -DPYTHON_EXECUTABLE=/xxx/xxx/python2
catkin_make package -DCATKIN_WHITELIST_PACKAGES="Python3_package1;Python3_package2;Python3_package3" -DPYTHON_EXECUTABLE=/xxx/xxx/python3
# 1.Environment：

1.1 一个可以运行YOLOv5的python环境

```bash
pip install -r requirements.txt
```

1.2 一个realsense相机和pyrealsense2库

1.2.1 Pyrealsense2使用方法
https://dev.intelrealsense.com/docs/ros-wrapper?_ga=2.258384458.1780182011.1687766628-238818034.1687766628(API wiki)

https://intelrealsense.github.io/librealsense/python_docs/_generated/pyrealsense2.html#module-pyrealsense2(Pyrealsense2 Documention)

1.2.2 Pyrealsense2在Xavier上的安装
https://github.com/IntelRealSense/librealsense/issues/8324

**在以下环境中测试成功**
- **Nvidia Xavier NX** Ubuntu18.04(AArch64) Jetpack4 Ros Melodic Python3.6 Pytorch 1.8

# 2.Results：

- Colorimage:



- Colorimage and depthimage:



# 3.Model config：

修改模型配置文件，这里以yolov5s模型为例。也可以使用自己训练的权重模型。

```yaml
weight:  "weights/yolov5s.pt"
# 输入图像的尺寸
input_size: 640
# 类别个数
class_num:  80
# 标签名称
class_name: [ 'person', 'bicycle', 'car', 'motorcycle', 'airplane', 'bus', 'train', 'truck', 'boat', 'traffic light',
         'fire hydrant', 'stop sign', 'parking meter', 'bench', 'bird', 'cat', 'dog', 'horse', 'sheep', 'cow',
         'elephant', 'bear', 'zebra', 'giraffe', 'backpack', 'umbrella', 'handbag', 'tie', 'suitcase', 'frisbee',
         'skis', 'snowboard', 'sports ball', 'kite', 'baseball bat', 'baseball glove', 'skateboard', 'surfboard',
         'tennis racket', 'bottle', 'wine glass', 'cup', 'fork', 'knife', 'spoon', 'bowl', 'banana', 'apple',
         'sandwich', 'orange', 'broccoli', 'carrot', 'hot dog', 'pizza', 'donut', 'cake', 'chair', 'couch',
         'potted plant', 'bed', 'dining table', 'toilet', 'tv', 'laptop', 'mouse', 'remote', 'keyboard', 'cell phone',
         'microwave', 'oven', 'toaster', 'sink', 'refrigerator', 'book', 'clock', 'vase', 'scissors', 'teddy bear',
         'hair drier', 'toothbrush' ]
# 阈值设置
threshold:
  iou: 0.45
  confidence: 0.6
# 计算设备
# - cpu
# - 0 <- 使用GPU
device: '0'
```

# 4.Camera config：

分辨率好像只能改特定的参数，不然会报错。d435i可以用 1280x720, 640x480, 848x480。

```python
config.enable_stream(rs.stream.depth, 1280, 720, rs.format.z16, 30)
config.enable_stream(rs.stream.color, 1280, 720, rs.format.bgr8, 30)
```
# 5.code return xyz：
下方代码实现从像素坐标系到相机坐标系转换，并且标注中心点以及三维坐标信息。
```python
for i in range(len(xyxy_list)):
    ux = int((xyxy_list[i][0]+xyxy_list[i][2])/2)  # 计算像素坐标系的x
    uy = int((xyxy_list[i][1]+xyxy_list[i][3])/2)  # 计算像素坐标系的y
    dis = aligned_depth_frame.get_distance(ux, uy)  
    camera_xyz = rs.rs2_deproject_pixel_to_point(
    depth_intrin, (ux, uy), dis)  # 计算相机坐标系xyz
    camera_xyz = np.round(np.array(camera_xyz), 3)  # 转成3位小数
    camera_xyz = camera_xyz.tolist()
    cv2.circle(canvas, (ux,uy), 4, (255, 255, 255), 5)#标出中心点
    cv2.putText(canvas, str(camera_xyz), (ux+20, uy+10), 0, 1,
                                [225, 255, 255], thickness=2, lineType=cv2.LINE_AA)#标出坐标
    camera_xyz_list.append(camera_xyz)
    #print(camera_xyz_list)
```
# 6.Reference:
[https://github.com/Thinkin99/yolov5_d435i_detection](https://github.com/Thinkin99/yolov5_d435i_detection)

[https://github.com/casso199](https://github.com/casso1993)
