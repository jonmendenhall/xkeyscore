.class public abstract Lcom/intermedia/model/Broadcast;
.super Ljava/lang/Object;
.source "Broadcast.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/Broadcast$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/Broadcast$Builder;
    .locals 1

    .line 31
    new-instance v0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;-><init>()V

    return-object v0
.end method

.method public static toTest(Lcom/intermedia/model/Broadcast;ZLjava/lang/String;)Lcom/intermedia/model/Broadcast;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 39
    invoke-static {}, Lcom/intermedia/model/Streams;->builder()Lcom/intermedia/model/Streams$Builder;

    move-result-object v0

    const-string v1, "rtsp://edge-001.hype.space:1935/live/android_test_high"

    .line 40
    invoke-virtual {v0, v1}, Lcom/intermedia/model/Streams$Builder;->high(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;

    move-result-object v0

    const-string v1, "rtsp://edge-001.hype.space:1935/live/android_test_low"

    .line 41
    invoke-virtual {v0, v1}, Lcom/intermedia/model/Streams$Builder;->low(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;

    move-result-object v0

    const-string v1, "rtsp://edge-001.hype.space:1935/live/android_test_medium"

    .line 42
    invoke-virtual {v0, v1}, Lcom/intermedia/model/Streams$Builder;->medium(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;

    move-result-object v0

    const-string v1, "rtsp://edge-001.hype.space:1935/live/android_test_high"

    .line 43
    invoke-virtual {v0, v1}, Lcom/intermedia/model/Streams$Builder;->passthrough(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;

    move-result-object v0

    const-string v1, "rtsp://edge-001.hype.space:1935/live/android_test_high"

    .line 44
    invoke-virtual {v0, v1}, Lcom/intermedia/model/Streams$Builder;->source(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/intermedia/model/Streams$Builder;->build()Lcom/intermedia/model/Streams;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/intermedia/model/Broadcast;->toBuilder()Lcom/intermedia/model/Broadcast$Builder;

    move-result-object v1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/intermedia/model/Broadcast;->socketUrl()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Lcom/intermedia/model/Broadcast$Builder;->socketUrl(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p0, v0}, Lcom/intermedia/model/Broadcast$Builder;->streams(Lcom/intermedia/model/Streams;)Lcom/intermedia/model/Broadcast$Builder;

    move-result-object p0

    const-string p1, "rtsp://edge-001.hype.space:1935/live/android_test_high"

    .line 50
    invoke-virtual {p0, p1}, Lcom/intermedia/model/Broadcast$Builder;->streamUrl(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/intermedia/model/Broadcast$Builder;->build()Lcom/intermedia/model/Broadcast;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract broadcastId()Ljava/lang/Long;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method hasEnded()Z
    .locals 2

    const-string v0, "ended"

    .line 55
    invoke-virtual {p0}, Lcom/intermedia/model/Broadcast;->state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract socketUrl()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract state()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract streamUrl()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract streams()Lcom/intermedia/model/Streams;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract toBuilder()Lcom/intermedia/model/Broadcast$Builder;
.end method
