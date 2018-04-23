.class public Lcom/intermedia/GameActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GameActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/GameActivity;


# direct methods
.method public constructor <init>(Lcom/intermedia/GameActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/intermedia/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/intermedia/GameActivity_ViewBinding;-><init>(Lcom/intermedia/GameActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/GameActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/intermedia/GameActivity_ViewBinding;->target:Lcom/intermedia/GameActivity;

    const-string v0, "field \'gameViewLayout\'"

    .line 30
    const-class v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a00cb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/intermedia/GameActivity;->gameViewLayout:Landroid/view/ViewGroup;

    const-string v0, "field \'modalBackgroundOverlay\'"

    .line 31
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0114

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/GameActivity;->modalBackgroundOverlay:Landroid/widget/ImageView;

    const-string v0, "field \'videoOverlay\'"

    .line 32
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0150

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/GameActivity;->videoOverlay:Landroid/widget/ImageView;

    const-string v0, "field \'mParticipantCount\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0134

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/GameActivity;->mParticipantCount:Landroid/widget/TextView;

    const-string v0, "field \'winnersBadgeTextView\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01f9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/GameActivity;->winnersBadgeTextView:Landroid/widget/TextView;

    const-string v0, "field \'winnersContainer\'"

    .line 35
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a01fa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/intermedia/GameActivity;->winnersContainer:Landroid/widget/LinearLayout;

    const-string v0, "field \'mWinnersListView\'"

    .line 36
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0a01fb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p1, Lcom/intermedia/GameActivity;->mWinnersListView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/intermedia/GameActivity_ViewBinding;->target:Lcom/intermedia/GameActivity;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/intermedia/GameActivity_ViewBinding;->target:Lcom/intermedia/GameActivity;

    .line 46
    iput-object v1, v0, Lcom/intermedia/GameActivity;->gameViewLayout:Landroid/view/ViewGroup;

    .line 47
    iput-object v1, v0, Lcom/intermedia/GameActivity;->modalBackgroundOverlay:Landroid/widget/ImageView;

    .line 48
    iput-object v1, v0, Lcom/intermedia/GameActivity;->videoOverlay:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lcom/intermedia/GameActivity;->mParticipantCount:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/intermedia/GameActivity;->winnersBadgeTextView:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/intermedia/GameActivity;->winnersContainer:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, v0, Lcom/intermedia/GameActivity;->mWinnersListView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
