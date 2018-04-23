.class public abstract Lcom/intermedia/model/Avatar;
.super Ljava/lang/Object;
.source "Avatar.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/Avatar$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/Avatar$Builder;
    .locals 1

    .line 30
    new-instance v0, Lcom/intermedia/model/AutoParcel_Avatar$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_Avatar$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract avatarUrl()Ljava/lang/String;
.end method

.method public abstract created()Ljava/util/Date;
.end method

.method public abstract toBuilder()Lcom/intermedia/model/Avatar$Builder;
.end method

.method public abstract userId()J
.end method

.method public abstract username()Ljava/lang/String;
.end method
