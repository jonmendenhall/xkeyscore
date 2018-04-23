.class public interface abstract Lcom/intermedia/av/media/HPViewerSessionListener;
.super Ljava/lang/Object;
.source "HPViewerSessionListener.java"


# virtual methods
.method public abstract didReceiveExtraLives(Lcom/intermedia/av/media/HPViewerSession;JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract didReceiveGameResult(Lcom/intermedia/av/media/HPViewerSession;Lcom/intermedia/model/HQGameResult;)V
.end method

.method public abstract didReceiveGameStatus(Lcom/intermedia/av/media/HPViewerSession;Lcom/intermedia/model/message/GameStatusMessage;)V
.end method

.method public abstract didReceiveGift(Lcom/intermedia/av/media/HPViewerSession;Lcom/intermedia/model/Gift;)V
.end method

.method public abstract didReceiveKicked(Lcom/intermedia/av/media/HPViewerSession;JLjava/lang/String;)V
.end method

.method public abstract didReceivePostGame(Lcom/intermedia/av/media/HPViewerSession;J)V
.end method

.method public abstract didReceiveQuestion(Lcom/intermedia/av/media/HPViewerSession;Lcom/intermedia/model/Question;)V
.end method

.method public abstract didReceiveQuestionClosed(Lcom/intermedia/av/media/HPViewerSession;J)V
.end method

.method public abstract didReceiveQuestionFinished(Lcom/intermedia/av/media/HPViewerSession;J)V
.end method

.method public abstract didReceiveQuestionResult(Lcom/intermedia/av/media/HPViewerSession;Lcom/intermedia/model/HQQuestionResult;Z)V
.end method

.method public abstract receivedChatMessage(Lcom/intermedia/av/media/HPViewerSession;Ljava/lang/String;)V
.end method

.method public abstract sessionDidBegin(Lcom/intermedia/av/media/HPViewerSession;)V
.end method

.method public abstract sessionDidBeginSwitchingStream(Lcom/intermedia/av/media/HPViewerSession;)V
.end method

.method public abstract sessionDidEnd(Lcom/intermedia/av/media/HPViewerSession;Ljava/lang/String;Z)V
.end method

.method public abstract sessionDidEndSwitchingStream(Lcom/intermedia/av/media/HPViewerSession;)V
.end method

.method public abstract sessionDidPause(Lcom/intermedia/av/media/HPViewerSession;)V
.end method

.method public abstract sessionDidReceiveFirstFrame(Lcom/intermedia/av/media/HPViewerSession;)V
.end method

.method public abstract sessionDidUnpause(Lcom/intermedia/av/media/HPViewerSession;)V
.end method

.method public abstract sessionIsOverloaded(Lcom/intermedia/av/media/HPViewerSession;)V
.end method
