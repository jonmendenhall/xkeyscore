.class Lcom/intermedia/game/GamePresenter$1;
.super Lcom/intermedia/network/SimpleSocketAPIListener;
.source "GamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/game/GamePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/game/GamePresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/game/GamePresenter;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-direct {p0}, Lcom/intermedia/network/SimpleSocketAPIListener;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 67
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {p1, p3, p4}, Lcom/intermedia/game/GamePresenter;->access$500(Lcom/intermedia/game/GamePresenter;J)V

    return-void
.end method

.method public receivedGameStatus(Ljava/lang/String;Lcom/intermedia/model/message/GameStatusMessage;Lcom/intermedia/model/message/SocketMessage;)V
    .locals 0
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

    .line 47
    invoke-virtual {p2}, Lcom/intermedia/model/message/GameStatusMessage;->isInTheGame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string p3, "game_joined"

    invoke-virtual {p1, p3}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {p1}, Lcom/intermedia/game/GamePresenter;->access$600(Lcom/intermedia/game/GamePresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/game/PlayerStatusRepository;->getPlayerStatus()Ljava/lang/String;

    move-result-object p1

    const-string p3, "not_joined"

    .line 51
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {p1}, Lcom/intermedia/game/GamePresenter;->access$300(Lcom/intermedia/game/GamePresenter;)Lcom/intermedia/game/GameModalPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/game/GameModalPresenter;->showLateModal()V

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {p1}, Lcom/intermedia/game/GamePresenter;->access$300(Lcom/intermedia/game/GamePresenter;)Lcom/intermedia/game/GameModalPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/game/GameModalPresenter;->showWelcomeBackModal()V

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    .line 59
    invoke-virtual {p2}, Lcom/intermedia/model/message/GameStatusMessage;->isInTheGame()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {p3}, Lcom/intermedia/game/GamePresenter;->access$600(Lcom/intermedia/game/GamePresenter;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p3

    invoke-virtual {p3}, Lcom/intermedia/game/PlayerStatusRepository;->getPlayerIsInTheGame()Z

    move-result p3

    if-nez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 58
    :goto_1
    invoke-static {p1, p3}, Lcom/intermedia/game/GamePresenter;->access$702(Lcom/intermedia/game/GamePresenter;Z)Z

    .line 60
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-virtual {p2}, Lcom/intermedia/model/message/GameStatusMessage;->isInTheGame()Z

    move-result p3

    invoke-static {p1, p3}, Lcom/intermedia/game/GamePresenter;->access$400(Lcom/intermedia/game/GamePresenter;Z)V

    .line 61
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-virtual {p2}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLivesRemaining()I

    move-result p2

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lcom/intermedia/game/GamePresenter;->access$500(Lcom/intermedia/game/GamePresenter;J)V

    return-void
.end method

.method public receivedQuestionSummary(Ljava/lang/String;Lcom/intermedia/model/HQQuestionResult;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {p1}, Lcom/intermedia/game/GamePresenter;->access$000(Lcom/intermedia/game/GamePresenter;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->getExtraLivesRemaining()I

    move-result p1

    if-lez p1, :cond_0

    .line 30
    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->isUserCorrect()Z

    move-result p1

    if-nez p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {p1}, Lcom/intermedia/game/GamePresenter;->access$100(Lcom/intermedia/game/GamePresenter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {p1}, Lcom/intermedia/game/GamePresenter;->access$300(Lcom/intermedia/game/GamePresenter;)Lcom/intermedia/game/GameModalPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {v0}, Lcom/intermedia/game/GamePresenter;->access$200(Lcom/intermedia/game/GamePresenter;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/intermedia/game/GameModalPresenter;->showExtraLifeOptInModal(Lcom/intermedia/model/HQQuestionResult;I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {p1}, Lcom/intermedia/game/GamePresenter;->access$000(Lcom/intermedia/game/GamePresenter;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->isSavedByExtraLife()Z

    move-result p1

    if-nez p1, :cond_1

    .line 35
    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->isUserCorrect()Z

    move-result p1

    if-nez p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {p1}, Lcom/intermedia/game/GamePresenter;->access$300(Lcom/intermedia/game/GamePresenter;)Lcom/intermedia/game/GameModalPresenter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/intermedia/game/GameModalPresenter;->showEliminatedModal(Lcom/intermedia/model/HQQuestionResult;)V

    .line 37
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "game_eliminated"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 39
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    iget-object v0, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-static {v0}, Lcom/intermedia/game/GamePresenter;->access$000(Lcom/intermedia/game/GamePresenter;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->isSavedByExtraLife()Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->isUserCorrect()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 39
    :goto_1
    invoke-static {p1, v0}, Lcom/intermedia/game/GamePresenter;->access$400(Lcom/intermedia/game/GamePresenter;Z)V

    .line 41
    iget-object p1, p0, Lcom/intermedia/game/GamePresenter$1;->this$0:Lcom/intermedia/game/GamePresenter;

    invoke-virtual {p2}, Lcom/intermedia/model/HQQuestionResult;->getExtraLivesRemaining()I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/intermedia/game/GamePresenter;->access$500(Lcom/intermedia/game/GamePresenter;J)V

    return-void
.end method
