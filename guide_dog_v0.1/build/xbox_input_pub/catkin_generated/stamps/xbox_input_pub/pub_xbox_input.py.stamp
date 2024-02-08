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
from xbox_input_pub.msg import xbox_input
# class xbox_input:
#     def __init__(sef, json):
#         xbox = xbox_input()
#         xbox.vx = json['vx']
#         xbox.vy = json['vy']
#         xbox.wz = json['vz']
#         xbox.pit = json['pit']
#         xbox.time = rospy.Time.now()
#         xbox.conf = json['conf']


# 实时发布Xbox手柄的速度输入
def pub_xbox_input(pub, json):
    # 设置发布频率
    rate = rospy.Rate(10)
    # 创建一个相机坐标系中的坐标点
    xbox = xbox_input()
    xbox.vx = json['vx']
    xbox.vy = json['vy']
    xbox.wz = json['vz']
    xbox.pit = json['pit']
    xbox.time = rospy.Time.now()
    xbox.conf = json['conf']
    # 将相机坐标系下人的坐标发布
    try:
        pub.publish(xbox)
        rate.sleep()
    except Exception as e:
        rospy.logerr(f"xbox控制输入发布异常!{e}")

async def handle(websocket):
    print('Jetson连接成功!')

    while True:
        data = await websocket.recv()
        data = json.loads(data)
        print(xbox_input(data))
        pub_xbox_input(pub, data)
		# 回复默认消息给客户端
        response = "Jetson收到命令序列！"
        await websocket.send(response)

async def run(websocket):
    while True:
        try:
            await handle(websocket)
        except websockets.ConnectionClosed:
            print('Jetson断开连接!')
            break

rospy.init_node("xobox_to_jetson_publisher")
pub = rospy.Publisher("/guide_dog_v0.1/robo_control/xbox_input", xbox_input, queue_size=10)
if __name__ == '__main__':
    server_host, server_port = "", 23335
    #rospy.logerr(f"jetson服务器已启动，等待客户端连接！")
    print("jetson服务器已启动，等待客户端连接！")
    asyncio.get_event_loop().run_until_complete(websockets.serve(run, server_host, server_port))
    asyncio.get_event_loop().run_forever()