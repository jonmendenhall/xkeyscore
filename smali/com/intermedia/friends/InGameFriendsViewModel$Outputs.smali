.class public interface abstract Lcom/intermedia/friends/InGameFriendsViewModel$Outputs;
.super Ljava/lang/Object;
.source "InGameFriendsViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/friends/InGameFriendsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Outputs"
.end annotation


# virtual methods
.method public abstract activeFriends()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/intermedia/model/ViewerUpdateUser;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract otherViewers()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/intermedia/model/PartialUser;",
            ">;>;"
        }
    .end annotation
.end method
