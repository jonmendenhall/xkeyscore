.class public abstract Lcom/intermedia/model/config/AdminConfig$SegmentToken;
.super Ljava/lang/Object;
.source "AdminConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/AdminConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SegmentToken"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/AdminConfig$SegmentToken$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public builder()Lcom/intermedia/model/config/AdminConfig$SegmentToken$Builder;
    .locals 1

    .line 42
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_AdminConfig_SegmentToken$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_AdminConfig_SegmentToken$Builder;-><init>()V

    return-object v0
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract token()Ljava/lang/String;
.end method
