#! /home/nvidia/mambaforge/envs/pytorch/bin/python
#! /usr/bin/python2
# -*- encoding: utf-8 -*-
'''
@File    :   Pub_robo_input.py
@Time    :   2023/07/20 10:36:57
@Author  :   Noah.Fang 
@Contact :   kidyf_1205@163.com
@WebSite :   ...
'''
import asyncio
import websockets
import json
import rospy
import xbox_input_pub

async def handle(websocket):
    print('Jetson连接成功!')

    while True:
        data = await websocket.recv()
        data = json.loads(data)
        print(data)
        pub_xbox_input(pub, data)
		# 回复默认消息给客户端
        response = "Jetson收到命令序列！"
        await websocket.send(response)

# 实时发布Xbox手柄的速度输入
def pub_xbox_input(pub, json):
    # 设置发布频率
    rate = rospy.Rate(10)
    # 创建一个相机坐标系中的坐标点
    xbox_input = xbox_input_pub()
    xbox_input.vx = json['vx']
    xbox_input.vy = json['vy']
    xbox_input.wz = json['vz']
    xbox_input.pit = json['pit']
    xbox_input.time = rospy.Time.now()
    xbox_input.conf = json['conf']
    # 将相机坐标系下人的坐标发布
    try:
        pub.publish(xbox_input)
        rate.sleep()
    except Exception as e:
        rospy.logerr(f"xbox控制输入发布异常!{e}")

async def run(websocket):
    while True:
        try:
            await handle(websocket)
        except websockets.ConnectionClosed:
            print('Jetson断开连接!')
            break

rospy.init_node("xobox_to_jetson_publisher")
pub = rospy.Publisher("/guide_dog_v0.1/robo_control/xbox_input", xbox_input_pub, queue_size=10)
if __name__ == '__main__':
    server_host, server_port = "", 23333
    asyncio.get_event_loop().run_until_complete(websockets.serve(run, server_host, server_port))
    asyncio.get_event_loop().run_forever()
