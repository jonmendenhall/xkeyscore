.class Lcom/intermedia/game/QuestionPresenter$1;
.super Lcom/intermedia/network/SimpleSocketAPIListener;
.source "QuestionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/game/QuestionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/game/QuestionPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/game/QuestionPresenter;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-direct {p0}, Lcom/intermedia/network/SimpleSocketAPIListener;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedBroadcastStats(Ljava/lang/String;Lcom/intermedia/model/BroadcastStats;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/BroadcastStats;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    .line 149
    invoke-virtual {p2}, Lcom/intermedia/model/BroadcastStats;->getViewerCounts()Lcom/intermedia/model/BroadcastViewerCounts;

    move-result-object p2

    invoke-virtual {p2}, Lcom/intermedia/model/BroadcastViewerCounts;->getConnected()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/intermedia/view/QuestionView;->setParticipantCount(I)V

    return-void
.end method

.method public receivedExtraLives(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    const-wide/16 p5, 0x0

    cmp-long p2, p3, p5

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/intermedia/view/QuestionView;->setLifeImageView(Z)V

    return-void
.end method

.method public receivedGameResult(Ljava/lang/String;Lcom/intermedia/model/HQGameResult;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/HQGameResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/intermedia/game/QuestionPresenter;->access$400(Lcom/intermedia/game/QuestionPresenter;Z)V

    return-void
.end method

.method public receivedGameStatus(Ljava/lang/String;Lcom/intermedia/model/message/GameStatusMessage;Lcom/intermedia/model/message/SocketMessage;)V
    .locals 8
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

    .line 157
    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {v0}, Lcom/intermedia/game/QuestionPresenter;->access$600(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/GamePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/game/GamePresenter;->savedByExtraLife()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {v0}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object v0

    iget-object v0, v0, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {v0}, Lcom/intermedia/view/QuestionView;->showExtraLifeBadge()V

    .line 160
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v3, "question_incorrect"

    new-array v4, v2, [Landroid/util/Pair;

    new-instance v5, Landroid/util/Pair;

    const-string v6, "saved"

    .line 161
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    .line 160
    invoke-virtual {v0, v3, v4}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    .line 163
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v3, "extraLife_used"

    new-array v4, v2, [Landroid/util/Pair;

    new-instance v5, Landroid/util/Pair;

    const-string v6, "optIn"

    .line 164
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    .line 163
    invoke-virtual {v0, v3, v4}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {v0}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object v0

    iget-object v0, v0, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p2}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLivesRemaining()I

    move-result p2

    if-lez p2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/intermedia/view/QuestionView;->setLifeImageView(Z)V

    .line 168
    iget-object p2, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p2}, Lcom/intermedia/game/QuestionPresenter;->access$500(Lcom/intermedia/game/QuestionPresenter;)V

    .line 170
    instance-of p2, p3, Lcom/intermedia/model/message/QuestionMessage;

    if-eqz p2, :cond_2

    .line 171
    invoke-static {p3}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/intermedia/model/message/QuestionMessage;

    iget-object p2, p2, Lcom/intermedia/model/message/QuestionMessage;->question:Lcom/intermedia/model/Question;

    invoke-virtual {p0, p1, p2}, Lcom/intermedia/game/QuestionPresenter$1;->receivedQuestion(Ljava/lang/String;Lcom/intermedia/model/Question;)V

    goto :goto_0

    .line 172
    :cond_2
    instance-of p2, p3, Lcom/intermedia/model/message/QuestionSummaryMessage;

    if-eqz p2, :cond_3

    .line 174
    invoke-static {p3}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/intermedia/model/message/QuestionSummaryMessage;

    iget-object p2, p2, Lcom/intermedia/model/message/QuestionSummaryMessage;->questionResult:Lcom/intermedia/model/HQQuestionResult;

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/intermedia/game/QuestionPresenter$1;->receivedQuestionSummary(Ljava/lang/String;Lcom/intermedia/model/HQQuestionResult;)V

    :cond_3
    :goto_0
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

    .line 41
    invoke-virtual {p2}, Lcom/intermedia/model/Question;->getQuestionId()J

    move-result-wide v0

    .line 42
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$000(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/intermedia/game/PlayerStatusRepository;->hasReceivedQuestion(J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 43
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$000(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/intermedia/game/PlayerStatusRepository;->addQuestionReceived(J)V

    .line 44
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-virtual {p2}, Lcom/intermedia/model/Question;->getQuestionNumber()I

    move-result v2

    invoke-static {p1, v2}, Lcom/intermedia/game/QuestionPresenter;->access$102(Lcom/intermedia/game/QuestionPresenter;I)I

    .line 46
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v2, "question_asked"

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/util/Pair;

    new-instance v5, Landroid/util/Pair;

    const-string v6, "number"

    .line 48
    invoke-virtual {p2}, Lcom/intermedia/model/Question;->getQuestionNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 46
    invoke-virtual {p1, v2, v4}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    .line 50
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p1, p2}, Lcom/intermedia/view/QuestionView;->setQuestion(Lcom/intermedia/model/Question;)V

    .line 51
    invoke-virtual {p2}, Lcom/intermedia/model/Question;->getTimeLeftMs()I

    move-result p1

    if-lez p1, :cond_0

    .line 53
    invoke-static {}, Lcom/intermedia/util/SoundEffectsPlayer;->getInstance()Lcom/intermedia/util/SoundEffectsPlayer;

    move-result-object p1

    sget-object v2, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->QUESTION:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    invoke-virtual {p1, v2}, Lcom/intermedia/util/SoundEffectsPlayer;->play(Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;)V

    .line 54
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p1, v3}, Lcom/intermedia/view/QuestionView;->setAnswerButtonsClickable(Z)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$300(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object p1

    new-instance v2, Lcom/intermedia/util/logging/events/GameState$AnswersDisabled;

    const-string v4, "QuestionPresenter"

    invoke-direct {v2, v4}, Lcom/intermedia/util/logging/events/GameState$AnswersDisabled;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 57
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p1, v6}, Lcom/intermedia/view/QuestionView;->setAnswerButtonsClickable(Z)V

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$300(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object p1

    new-instance v2, Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;

    const-string v4, "QuestionPresenter"

    .line 61
    invoke-virtual {p2}, Lcom/intermedia/model/Question;->getQuestionNumber()I

    move-result p2

    invoke-direct {v2, v4, v0, v1, p2}, Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;-><init>(Ljava/lang/String;JI)V

    .line 60
    invoke-virtual {p1, v2}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 62
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1, v3}, Lcom/intermedia/game/QuestionPresenter;->access$400(Lcom/intermedia/game/QuestionPresenter;Z)V

    .line 64
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$000(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/game/PlayerStatusRepository;->getLastAnswer()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {v0}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object v0

    iget-object v0, v0, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {v0, p1, p2}, Lcom/intermedia/view/QuestionView;->setButtonSelectedForAnswerId(J)V

    :cond_1
    return-void
.end method

.method public receivedQuestionCanceled(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$000(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/game/PlayerStatusRepository;->getLastQuestionReceived()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/intermedia/game/QuestionPresenter;->access$400(Lcom/intermedia/game/QuestionPresenter;Z)V

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$000(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/intermedia/game/PlayerStatusRepository;->cancelQuestion(J)V

    return-void
.end method

.method public receivedQuestionClosed(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$000(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/game/PlayerStatusRepository;->getLastQuestionReceived()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$300(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object p1

    new-instance v0, Lcom/intermedia/util/logging/events/GameState$HideQuestion;

    const-string v1, "QuestionPresenter"

    invoke-direct {v0, v1, p2, p3}, Lcom/intermedia/util/logging/events/GameState$HideQuestion;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p1, v0}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 93
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/intermedia/game/QuestionPresenter;->access$400(Lcom/intermedia/game/QuestionPresenter;Z)V

    :cond_0
    return-void
.end method

.method public receivedQuestionFinished(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$000(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/game/PlayerStatusRepository;->getLastQuestionReceived()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$300(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object p1

    new-instance v0, Lcom/intermedia/util/logging/events/GameState$HideQuestionResult;

    const-string v1, "QuestionPresenter"

    invoke-direct {v0, v1, p2, p3}, Lcom/intermedia/util/logging/events/GameState$HideQuestionResult;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p1, v0}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 75
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/intermedia/game/QuestionPresenter;->access$400(Lcom/intermedia/game/QuestionPresenter;Z)V

    .line 76
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/intermedia/view/QuestionView;->clearAnswers(Z)V

    :cond_0
    return-void
.end method

.method public receivedQuestionSummary(Ljava/lang/String;Lcom/intermedia/model/HQQuestionResult;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->getQuestionId()J

    move-result-wide v0

    .line 107
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$000(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/intermedia/game/PlayerStatusRepository;->hasReceivedQuestionResult(J)Z

    move-result p1

    if-nez p1, :cond_4

    .line 108
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$000(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/intermedia/game/PlayerStatusRepository;->addQuestionResult(J)V

    .line 109
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$500(Lcom/intermedia/game/QuestionPresenter;)V

    .line 111
    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->isSavedByExtraLife()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p1}, Lcom/intermedia/view/QuestionView;->showExtraLifeBadge()V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->isUserCorrect()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p1, v3}, Lcom/intermedia/view/QuestionView;->setQuestionStatus(Z)V

    .line 126
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v4, "question_correct"

    invoke-virtual {p1, v4}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->playerDidAnswer()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p1, v2}, Lcom/intermedia/view/QuestionView;->setQuestionStatus(Z)V

    .line 130
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v4, "question_incorrect"

    new-array v5, v3, [Landroid/util/Pair;

    new-instance v6, Landroid/util/Pair;

    const-string v7, "saved"

    .line 131
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v2

    .line 130
    invoke-virtual {p1, v4, v5}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    .line 134
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->getQuestion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/intermedia/view/QuestionView;->setQuestionTextView(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswerId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/intermedia/view/QuestionView;->setMyAnswerId(J)V

    .line 136
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->getResults()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/intermedia/view/QuestionView;->showAnswerResults(Ljava/util/List;)V

    .line 137
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$200(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/game/QuestionViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->getExtraLivesRemaining()I

    move-result p2

    if-lez p2, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p1, v2}, Lcom/intermedia/view/QuestionView;->setLifeImageView(Z)V

    .line 139
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1}, Lcom/intermedia/game/QuestionPresenter;->access$300(Lcom/intermedia/game/QuestionPresenter;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object p1

    new-instance p2, Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;

    const-string v2, "QuestionPresenter"

    invoke-direct {p2, v2, v0, v1}, Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p1, p2}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 140
    iget-object p1, p0, Lcom/intermedia/game/QuestionPresenter$1;->this$0:Lcom/intermedia/game/QuestionPresenter;

    invoke-static {p1, v3}, Lcom/intermedia/game/QuestionPresenter;->access$400(Lcom/intermedia/game/QuestionPresenter;Z)V

    :cond_4
    return-void
.end method
