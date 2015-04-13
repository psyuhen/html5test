/**
 * 
 */
package com.example.webscoket;

import java.io.IOException;
import java.nio.ByteBuffer;

import javax.websocket.OnMessage;
import javax.websocket.PongMessage;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.joda.time.DateTime;

/**
 * Hello World WebSocket
 * @author ps
 *
 */
@ServerEndpoint("/websocket/echoHello")
public class EchoHello {
	@OnMessage
    public void echoTextMessage(Session session, String msg, boolean last) {
        try {
            if (session.isOpen()) {
            	DateTime dt = DateTime.now();
            	msg = "【我是服务器】："+msg+",时间："+dt.toString("yyyyMMddHHmmss");
                session.getBasicRemote().sendText(msg, last);
            }
        } catch (IOException e) {
        	e.printStackTrace();
            try {
                session.close();
            } catch (IOException e1) {
            	e1.printStackTrace();
            }
        }
    }

    @OnMessage
    public void echoBinaryMessage(Session session, ByteBuffer bb,
            boolean last) {
        try {
            if (session.isOpen()) {
                session.getBasicRemote().sendBinary(bb, last);
            }
        } catch (IOException e) {
        	e.printStackTrace();
            try {
                session.close();
            } catch (IOException e1) {
            	e1.printStackTrace();
            }
        }
    }

    /**
     * Process a received pong. This is a NO-OP.
     *
     * @param pm    Ignored.
     */
    @OnMessage
    public void echoPongMessage(PongMessage pm) {
        // NO-OP
    }
}
