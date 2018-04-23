.class public abstract Lcom/intermedia/model/config/StreamConfig;
.super Ljava/lang/Object;
.source "StreamConfig.java"


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/StreamConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/intermedia/model/config/StreamConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    invoke-static {}, Lcom/intermedia/model/config/StreamConfig$Builder;->builder()Lcom/intermedia/model/config/StreamConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/config/StreamConfig$Builder;->build()Lcom/intermedia/model/config/StreamConfig;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/config/StreamConfig;->DEFAULT:Lcom/intermedia/model/config/StreamConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract allowsReconnect()Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract downStepFloor()Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract downStepSampleSize()Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract isDownStepEnabled()Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract isUpStepEnabled()Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract upStepCeil()Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract upStepSampleSize()Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
