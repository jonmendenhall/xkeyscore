.class Lcom/intermedia/GameActivity$1;
.super Lcom/intermedia/network/SimpleSocketAPIListener;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/GameActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/GameActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-direct {p0}, Lcom/intermedia/network/SimpleSocketAPIListener;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastEnded(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p3, :cond_1

    .line 121
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p3, "reason"

    .line 122
    invoke-static {p2}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    const v0, 0x7f110134

    invoke-virtual {p2, v0}, Lcom/intermedia/GameActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 121
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 124
    iget-object p2, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Lcom/intermedia/GameActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/intermedia/GameActivity;->setResult(I)V

    .line 129
    :goto_1
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-static {p1}, Lcom/intermedia/GameActivity;->access$000(Lcom/intermedia/GameActivity;)Lcom/intermedia/game/PlayerStatusRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/game/PlayerStatusRepository;->clear()V

    .line 130
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-virtual {p1}, Lcom/intermedia/GameActivity;->finish()V

    return-void
.end method

.method public broadcastFull(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 135
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/intermedia/GameActivity;->setResult(I)V

    .line 136
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-virtual {p1}, Lcom/intermedia/GameActivity;->finish()V

    return-void
.end method

.method public broadcastSocketConnectionFailed()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/intermedia/GameActivity;->setResult(I)V

    .line 114
    iget-object v0, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-virtual {v0}, Lcom/intermedia/GameActivity;->finish()V

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

    .line 167
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    iget-object p1, p1, Lcom/intermedia/GameActivity;->mParticipantCount:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p2}, Lcom/intermedia/model/BroadcastStats;->getViewerCounts()Lcom/intermedia/model/BroadcastViewerCounts;

    move-result-object p2

    invoke-virtual {p2}, Lcom/intermedia/model/BroadcastViewerCounts;->getConnected()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/intermedia/util/ViewerCountFormatter;->format(J)Ljava/lang/String;

    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public receivedGameResult(Ljava/lang/String;Lcom/intermedia/model/HQGameResult;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/HQGameResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-static {p1}, Lcom/intermedia/GameActivity;->access$100(Lcom/intermedia/GameActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 143
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-virtual {p2}, Lcom/intermedia/model/HQGameResult;->getWinners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/intermedia/GameActivity;->access$102(Lcom/intermedia/GameActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 144
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-static {p1}, Lcom/intermedia/GameActivity;->access$200(Lcom/intermedia/GameActivity;)Lcom/intermedia/adapters/WinnerListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-static {v0}, Lcom/intermedia/GameActivity;->access$100(Lcom/intermedia/GameActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intermedia/adapters/WinnerListAdapter;->takeData(Ljava/util/List;)V

    .line 145
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-virtual {p2}, Lcom/intermedia/model/HQGameResult;->getNumWinners()I

    move-result v0

    invoke-static {p1, v0}, Lcom/intermedia/GameActivity;->access$300(Lcom/intermedia/GameActivity;I)V

    .line 147
    invoke-virtual {p2}, Lcom/intermedia/model/HQGameResult;->isYouWon()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    iget-object p1, p1, Lcom/intermedia/GameActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {p1}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p2, p1}, Lcom/intermedia/model/HQGameResult;->findWinner(Ljava/lang/String;)Lcom/intermedia/model/HQGameWinner;

    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-static {p2}, Lcom/intermedia/GameActivity;->access$400(Lcom/intermedia/GameActivity;)Lcom/intermedia/game/GameModalPresenter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/intermedia/model/HQGameWinner;->getPrize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/intermedia/game/GameModalPresenter;->showYouWonModal(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public receivedKicked(JLjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public receivedPostGame(Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 156
    iget-object p1, p0, Lcom/intermedia/GameActivity$1;->this$0:Lcom/intermedia/GameActivity;

    invoke-static {p1}, Lcom/intermedia/GameActivity;->access$500(Lcom/intermedia/GameActivity;)V

    return-void
.end method
