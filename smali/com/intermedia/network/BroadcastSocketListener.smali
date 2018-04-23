.class public interface abstract Lcom/intermedia/network/BroadcastSocketListener;
.super Ljava/lang/Object;
.source "BroadcastSocketListener.java"


# virtual methods
.method public abstract onConnect()V
.end method

.method public abstract onMessageReceived(Lcom/intermedia/model/message/SocketMessage;)V
    .param p1    # Lcom/intermedia/model/message/SocketMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSocketConnectionFailed()V
.end method
