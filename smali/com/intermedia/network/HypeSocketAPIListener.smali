.class public interface abstract Lcom/intermedia/network/HypeSocketAPIListener;
.super Ljava/lang/Object;
.source "HypeSocketAPIListener.java"


# virtual methods
.method public abstract broadcastConnected()V
.end method

.method public abstract broadcastDisconnected()V
.end method

.method public abstract broadcastEnded(Ljava/lang/String;Ljava/lang/String;Z)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract broadcastFull(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract broadcastPaused()V
.end method

.method public abstract broadcastSocketConnectionFailed()V
.end method

.method public abstract broadcastUnpaused()V
.end method

.method public abstract receivedBroadcastStats(Ljava/lang/String;Lcom/intermedia/model/BroadcastStats;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/BroadcastStats;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedExtraLives(JJLjava/lang/String;Ljava/lang/String;)V
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedGameResult(Ljava/lang/String;Lcom/intermedia/model/HQGameResult;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/HQGameResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedGameStatus(Ljava/lang/String;Lcom/intermedia/model/message/GameStatusMessage;Lcom/intermedia/model/message/SocketMessage;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/message/GameStatusMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/model/message/SocketMessage;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract receivedGift(Lcom/intermedia/model/Gift;)V
    .param p1    # Lcom/intermedia/model/Gift;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedInteraction(Lcom/intermedia/av/media/HPMediaItemInteraction;)V
    .param p1    # Lcom/intermedia/av/media/HPMediaItemInteraction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedKicked(JLjava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedPostGame(Ljava/lang/String;J)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedQuestion(Ljava/lang/String;Lcom/intermedia/model/Question;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/Question;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedQuestionCanceled(Ljava/lang/String;J)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedQuestionClosed(Ljava/lang/String;J)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedQuestionFinished(Ljava/lang/String;J)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedQuestionSummary(Ljava/lang/String;Lcom/intermedia/model/HQQuestionResult;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract receivedViewerUpdate(Lcom/intermedia/model/message/ViewerUpdateMessage;)V
    .param p1    # Lcom/intermedia/model/message/ViewerUpdateMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
