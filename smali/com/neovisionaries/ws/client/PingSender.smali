.class Lcom/neovisionaries/ws/client/PingSender;
.super Lcom/neovisionaries/ws/client/PeriodicalFrameSender;
.source "PingSender.java"


# static fields
.field private static final TIMER_NAME:Ljava/lang/String; = "PingSender"


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/PayloadGenerator;)V
    .locals 1

    const-string v0, "PingSender"

    .line 26
    invoke-direct {p0, p1, v0, p2}, Lcom/neovisionaries/ws/client/PeriodicalFrameSender;-><init>(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/String;Lcom/neovisionaries/ws/client/PayloadGenerator;)V

    return-void
.end method


# virtual methods
.method protected createFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPingFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    return-object p1
.end method
