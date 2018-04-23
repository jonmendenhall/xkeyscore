.class public abstract Lcom/intermedia/model/config/StreamConfig$Builder;
.super Ljava/lang/Object;
.source "StreamConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/StreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/config/StreamConfig$Builder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 36
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;-><init>()V

    const/4 v1, 0x1

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->allowsReconnect(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;

    move-result-object v0

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/intermedia/model/config/StreamConfig$Builder;->isDownStepEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;

    move-result-object v0

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/intermedia/model/config/StreamConfig$Builder;->isUpStepEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;

    move-result-object v0

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/StreamConfig$Builder;->downStepFloor(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;

    move-result-object v0

    const/16 v1, 0xa

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/StreamConfig$Builder;->downStepSampleSize(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;

    move-result-object v0

    const/16 v1, 0x19

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/StreamConfig$Builder;->upStepCeil(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;

    move-result-object v0

    const/16 v1, 0x3c

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/StreamConfig$Builder;->upStepSampleSize(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract allowsReconnect(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;
.end method

.method public abstract build()Lcom/intermedia/model/config/StreamConfig;
.end method

.method public abstract downStepFloor(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;
.end method

.method public abstract downStepSampleSize(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;
.end method

.method public abstract isDownStepEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;
.end method

.method public abstract isUpStepEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;
.end method

.method public abstract upStepCeil(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;
.end method

.method public abstract upStepSampleSize(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;
.end method
