.class public Lcom/intermedia/game/SocketMessageLogger;
.super Lcom/intermedia/network/SimpleSocketAPIListener;
.source "SocketMessageLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SocketMessageLogger"


# instance fields
.field private final debugReporter:Lcom/intermedia/util/logging/DebugReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/intermedia/util/logging/DebugReporter;)V
    .locals 0
    .param p1    # Lcom/intermedia/util/logging/DebugReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Lcom/intermedia/network/SimpleSocketAPIListener;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    return-void
.end method


# virtual methods
.method public broadcastEnded(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    iget-object v0, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v1, Lcom/intermedia/util/logging/events/IncomingGameMessage$BroadcastEnded;

    const-string v2, "SocketMessageLogger"

    invoke-direct {v1, v2, p1, p3, p2}, Lcom/intermedia/util/logging/events/IncomingGameMessage$BroadcastEnded;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method public broadcastFull(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    iget-object v0, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v1, Lcom/intermedia/util/logging/events/IncomingGameMessage$BroadcastFull;

    const-string v2, "SocketMessageLogger"

    invoke-direct {v1, v2, p1}, Lcom/intermedia/util/logging/events/IncomingGameMessage$BroadcastFull;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method public receivedBroadcastStats(Ljava/lang/String;Lcom/intermedia/model/BroadcastStats;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/BroadcastStats;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    iget-object p2, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v0, Lcom/intermedia/util/logging/events/IncomingGameMessage$BroadcastStats;

    const-string v1, "SocketMessageLogger"

    invoke-direct {v0, v1, p1}, Lcom/intermedia/util/logging/events/IncomingGameMessage$BroadcastStats;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method public receivedGameResult(Ljava/lang/String;Lcom/intermedia/model/HQGameResult;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/HQGameResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    iget-object p2, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v0, Lcom/intermedia/util/logging/events/IncomingGameMessage$GameResult;

    const-string v1, "SocketMessageLogger"

    invoke-direct {v0, v1, p1}, Lcom/intermedia/util/logging/events/IncomingGameMessage$GameResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method public receivedGameStatus(Ljava/lang/String;Lcom/intermedia/model/message/GameStatusMessage;Lcom/intermedia/model/message/SocketMessage;)V
    .locals 7
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

    .line 42
    iget-object p3, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v6, Lcom/intermedia/util/logging/events/IncomingGameMessage$GameStatus;

    const-string v1, "SocketMessageLogger"

    invoke-virtual {p2}, Lcom/intermedia/model/message/GameStatusMessage;->isInTheGame()Z

    move-result v3

    .line 43
    invoke-virtual {p2}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLives()I

    move-result v4

    invoke-virtual {p2}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLivesRemaining()I

    move-result v5

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/util/logging/events/IncomingGameMessage$GameStatus;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 42
    invoke-virtual {p3, v6}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method public receivedPostGame(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iget-object p2, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance p3, Lcom/intermedia/util/logging/events/IncomingGameMessage$PostGame;

    const-string v0, "SocketMessageLogger"

    invoke-direct {p3, v0, p1}, Lcom/intermedia/util/logging/events/IncomingGameMessage$PostGame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method public receivedQuestion(Ljava/lang/String;Lcom/intermedia/model/Question;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/Question;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    iget-object v0, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v7, Lcom/intermedia/util/logging/events/IncomingGameMessage$Question;

    const-string v2, "SocketMessageLogger"

    invoke-virtual {p2}, Lcom/intermedia/model/Question;->getQuestionId()J

    move-result-wide v4

    .line 49
    invoke-virtual {p2}, Lcom/intermedia/model/Question;->getQuestionNumber()I

    move-result v6

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/intermedia/util/logging/events/IncomingGameMessage$Question;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 48
    invoke-virtual {v0, v7}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method public receivedQuestionCanceled(Ljava/lang/String;J)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    iget-object v0, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v1, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionCanceled;

    const-string v2, "SocketMessageLogger"

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionCanceled;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method public receivedQuestionClosed(Ljava/lang/String;J)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v1, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionClosed;

    const-string v2, "SocketMessageLogger"

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionClosed;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method public receivedQuestionFinished(Ljava/lang/String;J)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v1, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionFinished;

    const-string v2, "SocketMessageLogger"

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionFinished;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method public receivedQuestionSummary(Ljava/lang/String;Lcom/intermedia/model/HQQuestionResult;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/intermedia/model/HQQuestionResult;->getCorrectAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object v0

    new-instance v1, Lcom/intermedia/model/HQAnswerResult;

    invoke-direct {v1}, Lcom/intermedia/model/HQAnswerResult;-><init>()V

    invoke-static {v0, v1}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/HQAnswerResult;

    .line 66
    invoke-virtual {v0}, Lcom/intermedia/model/HQAnswerResult;->getAnswerId()I

    move-result v0

    move-object v1, p0

    .line 67
    iget-object v2, v1, Lcom/intermedia/game/SocketMessageLogger;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v14, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionSummary;

    const-string v4, "SocketMessageLogger"

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/intermedia/model/HQQuestionResult;->getQuestionId()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/intermedia/model/HQQuestionResult;->isUserCorrect()Z

    move-result v8

    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswerId()I

    move-result v3

    int-to-long v9, v3

    invoke-virtual/range {p2 .. p2}, Lcom/intermedia/model/HQQuestionResult;->getExtraLivesRemaining()I

    move-result v11

    int-to-long v12, v0

    move-object v3, v14

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v13}, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionSummary;-><init>(Ljava/lang/String;Ljava/lang/String;JZJIJ)V

    .line 67
    invoke-virtual {v2, v14}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method
