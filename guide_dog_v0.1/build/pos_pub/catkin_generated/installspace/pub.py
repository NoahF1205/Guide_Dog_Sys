#! /usr/bin/python2
# -*- encoding: utf-8 -*-
'''
@File    :   pub.py
@Time    :   2023/07/17 10:07:51
@Author  :   Noah.Fang 
@Contact :   kidyf_1205@163.com
@WebSite :   ...
'''
import rospy
import tf2_ros
from tf2_geometry_msgs import PointStamped
#实时发布检测到的人位置信息
def publish_people_position(pub, x, y, z):
    # # 创建TF订阅对象
    # buffer = tf2_ros.Buffer()
    # listener = tf2_ros.TransformListener(buffer)
    rate = rospy.Rate(10)
    # 创建一个相机坐标系中的坐标点
    people_position = PointStamped()
    people_position.header.frame_id = "realnseD435"
    people_position.header.stamp = rospy.Time.now()
    people_position.point.x = x
    people_position.point.y = y
    people_position.point.z = z
    # 将相机坐标系点转化成相对于机器人baseline的坐标并发布
    try:
        robo_people_position = buffer.transform(people_position, "guide_dog")
        pub.publish(people_position)
        rate.sleep()
    except Exception as e:
        rospy.logerr(f'人体检测坐标发布异常!')
if __name__ == '__main__':
    rospy.init_node("pos_pub")
    pub = rospy.Publisher("/guide_dog_v0.1/robo_vision/people_position", PointStamped, queue_size=10)
    while not rospy.is_shutdown():
        publish_people_position(pub, 1, 2, 3)
            