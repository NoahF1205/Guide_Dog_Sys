#! /usr/bin/python2
# -*- encoding: utf-8 -*-
'''
@File    :   pub.py
@Time    :   2023/07/17 10:07:51
@Author  :   Noah.Fang 
@Contact :   kidyf_1205@163.com
@WebSite :   ...
'''
import numpy as np
import rospy
import tf2_ros
from geometry_msgs.msg import PointStamped as Point_camera
from tf2_geometry_msgs import PointStamped
from message_filters import TimeSynchronizer, Subscriber # 后续考虑结合导航系统发布的机器人实时坐标，实现动态坐标变换
from pos_pub.msg import angle

# 回调函数：接受robo_vision发布的相机系中人的位置坐标，转换后发布机器人系中人的位置坐标和人位置与机器人x轴（前进方向)的夹角
def pub_people_pose_robot(msg): 
    # 创建一个相机坐标系中的坐标点
    people_pos_camera = PointStamped()
    people_pos_camera.header.frame_id = msg.header.frame_id
    people_pos_camera.header.stamp = msg.header.stamp
    people_pos_camera.point.x = msg.point.x
    people_pos_camera.point.y = msg.point.y
    people_pos_camera.point.z = msg.point.z
    try:
        # 将相机坐标系点转化成相对于机器人baseline的坐标并发布
        people_pos_robot = buffer.transform(people_pos_camera, "robot_baselink")
        pub.publish(people_pos_robot)
        # 由坐标点得到和x方向的夹角并发布
        people_angle_robot = angle_with_x_axis(people_pos_robot.point.x, people_pos_robot.point.y, people_pos_robot.point.z)
        pub_angle.publish(people_angle_robot)
    except Exception as e:
        rospy.logerr("人体检测坐标发布异常!")
# 已知坐标计算夹角
def angle_with_x_axis(x, y, z):
    v = np.arrary([x, y, z])
    u = np.arrary([1, 0, 0])
    angle_radian = np.arccos(np.dot(v, u) / (np.linalg.norm(v) * np.linalg.norm(u)))
    angle_degree = np.degrees(angle_radian)
    return angle_degree

# 创建ros节点和相机坐标系下人体坐标的发布器(全局是因为SuberScriber回调函数不允许输入参数)
rospy.init_node("people_pose_pub")
pub = rospy.Publisher("/guide_dog_v0.1/robo_vision/people_position_robot", PointStamped, queue_size=10)
pub_angle = rospy.Publisher("/guide_dog_v0.1/robo_vision/people_robot_angle", angle, queue_size=10)
if __name__ == '__main__':
    # 订阅TF广播器(Robot的世界坐标)
    buffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(buffer)  
    # 订阅roboision节点发布的相机系中人的坐标，通过回调函数转换后发布机器人系中人的位置坐标
    sub = rospy.Subscriber('/guide_dog_v0.1/robo_vision/people_position_camera', Point_camera, pub_people_pose_robot, queue_size=10)
    rospy.spin()
        
            