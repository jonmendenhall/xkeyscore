.class public interface abstract Lcom/tendigi/hq/hqplayer/HQStream$Listener;
.super Ljava/lang/Object;
.source "HQStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendigi/hq/hqplayer/HQStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onPlaybackStarted()V
.end method

.method public abstract onPlaybackStopped()V
.end method
