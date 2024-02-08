#! /usr/bin/python2
# -*- encoding: utf-8 -*-
'''
@File    :   pub_camera_to_robo.py
@Time    :   2023/07/17 15:07:14
@Author  :   Noah.Fang 
@Contact :   kidyf_1205@163.com
@WebSite :   ...
'''
import rospy
import tf2_ros
import tf
from geometry_msgs.msg import TransformStamped

# 广播机器人和相机相对位置信息(静态)
def pub_camera_to_robo():
    # 创建静态坐标广播器
    broadcaster = tf2_ros.StaticTransformBroadcaster()
    tfs = TransformStamped()
    tfs.header.frame_id = "robot_baselink"
    tfs.header.stamp = rospy.Time.now()
    
    # 这里指的是相机到机器人中心需要的位移和旋转
    tfs.child_frame_id = "realsenseD435"
    # 位移
    tfs.transform.translation.x = 0.2
    tfs.transform.translation.y = 0.0
    tfs.transform.translation.z = 0.5
    # 旋转
    qtn = tf.transformations.quaternion_from_euler(0, 0, 0)
    tfs.transform.rotation.x = qtn[0]
    tfs.transform.rotation.y = qtn[1]
    tfs.transform.rotation.z = qtn[2]
    tfs.transform.rotation.w = qtn[3]
    # 广播发布消息
    broadcaster.sendTransform(tfs)
    rospy.spin()

if __name__ == "__main__":
    # 初始化ros节点
    rospy.init_node("robo_to_camera_pub")
    
    # 广播机器人和相机相对位置信息
    rospy.loginfo("相机to机器人位置变换已发布！")
    pub_camera_to_robo()