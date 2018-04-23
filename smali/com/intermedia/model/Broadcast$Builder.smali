.class public abstract Lcom/intermedia/model/Broadcast$Builder;
.super Ljava/lang/Object;
.source "Broadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/Broadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract broadcastId(Ljava/lang/Long;)Lcom/intermedia/model/Broadcast$Builder;
.end method

.method public abstract build()Lcom/intermedia/model/Broadcast;
.end method

.method public abstract socketUrl(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;
.end method

.method public abstract state(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;
.end method

.method public abstract streamUrl(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;
.end method

.method public abstract streams(Lcom/intermedia/model/Streams;)Lcom/intermedia/model/Broadcast$Builder;
.end method
