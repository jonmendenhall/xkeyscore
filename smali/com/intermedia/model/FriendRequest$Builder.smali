.class public abstract Lcom/intermedia/model/FriendRequest$Builder;
.super Ljava/lang/Object;
.source "FriendRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/FriendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/FriendRequest;
.end method

.method public abstract requestedUser(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/FriendRequest$Builder;
.end method

.method public abstract requestingUser(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/FriendRequest$Builder;
.end method

.method public abstract status(Lcom/intermedia/model/FriendStatus;)Lcom/intermedia/model/FriendRequest$Builder;
.end method
