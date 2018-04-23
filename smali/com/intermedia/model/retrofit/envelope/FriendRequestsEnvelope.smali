.class public abstract Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope;
.super Ljava/lang/Object;
.source "FriendRequestsEnvelope.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;
    .locals 1

    .line 27
    new-instance v0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract data()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/intermedia/model/FriendRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract links()Lcom/intermedia/model/Links;
.end method

.method public abstract toBuilder()Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;
.end method
