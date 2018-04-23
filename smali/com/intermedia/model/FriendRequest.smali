.class public abstract Lcom/intermedia/model/FriendRequest;
.super Ljava/lang/Object;
.source "FriendRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/FriendRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/FriendRequest$Builder;
    .locals 1

    .line 25
    new-instance v0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract requestedUser()Lcom/intermedia/model/PartialUser;
.end method

.method public abstract requestingUser()Lcom/intermedia/model/PartialUser;
.end method

.method public abstract status()Lcom/intermedia/model/FriendStatus;
.end method
