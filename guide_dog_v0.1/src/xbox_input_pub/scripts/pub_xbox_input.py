#! /home/nvidia/mambaforge/bin/python
# -*- encoding: utf-8 -*-
'''
@File    :   Pub_robo_input.py
@Time    :   2023/07/20 10:37:22
@Author  :   Noah.Fang 
@Contact :   kidyf_1205@163.com
@WebSite :   ...
'''
import asyncio
import websockets
import json
import rospy
import sys
import datetime
sys.path.append('/home/nvidia/ros_ws/guide_dog_v0.1/devel/lib/python3/dist-packages')
from xbox_input_pub.msg import xbox_input
# class xbox_input:
#     def __init__(self, json):
#         self.vx = json['vx']
#         self.vy = json['vy']
#         self.wz = json['wz']
#         self.pit = json['pit']
#         self.time = datetime.datetime.now()
#         self.conf = json['conf']


# 实时发布Xbox手柄的速度输入
def pub_xbox_input(pub, json):
    # 设置发布频率
    rate = rospy.Rate(10)
    # 创建一个相机坐标系中的坐标点
    try:
        xbox = xbox_input()
        xbox.vx = json['vx']
        xbox.vy = json['vy']
        xbox.wz = json['wz']
        xbox.pit = json['pit']
        xbox.timestamps = rospy.Time.now()
        xbox.conf = json['conf']
        pub.publish(xbox)
        rate.sleep()
    except Exception as e:
        rospy.logerr(f"xbox控制输入发布异常!{e}")

async def handle(websocket):
    rospy.loginfo('Jetson连接成功!')

    while True:
        data = await websocket.recv()
        data = json.loads(data)
        pub_xbox_input(pub, data)
		# 回复默认消息给客户端
        response = "Jetson收到命令序列！"
        await websocket.send(response)

async def run(websocket):
    while True:
        try:
            await handle(websocket)
        except websockets.ConnectionClosed:
            rospy.logerr("Jetson断开连接!")
            break
rospy.init_node("xobox_to_jetson_publisher")
pub = rospy.Publisher("/guide_dog/robo_control/xbox_input", xbox_input, queue_size=10)
if __name__ == '__main__':
    server_host, server_port = "", 23333
    rospy.loginfo("Jetson服务器已启动，等待客户端连接！")
    asyncio.get_event_loop().run_until_complete(websockets.serve(run, server_host, server_port))
    asyncio.get_event_loop().run_forever()