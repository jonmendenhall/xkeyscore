.class public abstract Lcom/intermedia/model/config/AdminConfig;
.super Ljava/lang/Object;
.source "AdminConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/AdminConfig$SegmentToken;,
        Lcom/intermedia/model/config/AdminConfig$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public builder()Lcom/intermedia/model/config/AdminConfig$Builder;
    .locals 1

    .line 25
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_AdminConfig$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_AdminConfig$Builder;-><init>()V

    return-object v0
.end method

.method public abstract segments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/intermedia/model/config/AdminConfig$SegmentToken;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
