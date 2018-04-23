.class public interface abstract Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;
.super Ljava/lang/Object;
.source "LeaderboardViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/viewmodels/LeaderboardViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Outputs"
.end annotation


# virtual methods
.method public abstract leaders()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/intermedia/model/Leader;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract progressBarIsGone()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reportLeaderboardError()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selfAvatarUrl()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selfBalanceTextViewText()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selfRankTextViewText()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selfUsernameTextViewText()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
