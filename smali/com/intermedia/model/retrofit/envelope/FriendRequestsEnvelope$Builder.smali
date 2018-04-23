.class public abstract Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;
.super Ljava/lang/Object;
.source "FriendRequestsEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope;
.end method

.method public abstract data(Ljava/util/List;)Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/FriendRequest;",
            ">;)",
            "Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;"
        }
    .end annotation
.end method

.method public abstract links(Lcom/intermedia/model/Links;)Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;
.end method
