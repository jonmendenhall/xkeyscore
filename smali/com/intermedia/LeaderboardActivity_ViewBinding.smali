.class public final Lcom/intermedia/LeaderboardActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LeaderboardActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/LeaderboardActivity;


# direct methods
.method public constructor <init>(Lcom/intermedia/LeaderboardActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-virtual {p1}, Lcom/intermedia/LeaderboardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/intermedia/LeaderboardActivity_ViewBinding;-><init>(Lcom/intermedia/LeaderboardActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/LeaderboardActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/intermedia/LeaderboardActivity_ViewBinding;->target:Lcom/intermedia/LeaderboardActivity;

    const-string v0, "field \'bgPatternImageView\'"

    .line 28
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0041

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/LeaderboardActivity;->bgPatternImageView:Landroid/widget/ImageView;

    const-string v0, "field \'leaderboardProgressBar\'"

    .line 29
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a00ee

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/intermedia/LeaderboardActivity;->leaderboardProgressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'recyclerView\'"

    .line 30
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0a00f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/intermedia/LeaderboardActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'selfAvatarImageView\'"

    .line 31
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a018e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/LeaderboardActivity;->selfAvatarImageView:Landroid/widget/ImageView;

    const-string v0, "field \'selfBalanceTextView\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a018f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/LeaderboardActivity;->selfBalanceTextView:Landroid/widget/TextView;

    const-string v0, "field \'selfRankTextView\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0190

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/LeaderboardActivity;->selfRankTextView:Landroid/widget/TextView;

    const-string v0, "field \'selfUsernameTextView\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0191

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/intermedia/LeaderboardActivity;->selfUsernameTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity_ViewBinding;->target:Lcom/intermedia/LeaderboardActivity;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/intermedia/LeaderboardActivity_ViewBinding;->target:Lcom/intermedia/LeaderboardActivity;

    .line 43
    iput-object v1, v0, Lcom/intermedia/LeaderboardActivity;->bgPatternImageView:Landroid/widget/ImageView;

    .line 44
    iput-object v1, v0, Lcom/intermedia/LeaderboardActivity;->leaderboardProgressBar:Landroid/widget/ProgressBar;

    .line 45
    iput-object v1, v0, Lcom/intermedia/LeaderboardActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 46
    iput-object v1, v0, Lcom/intermedia/LeaderboardActivity;->selfAvatarImageView:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lcom/intermedia/LeaderboardActivity;->selfBalanceTextView:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/intermedia/LeaderboardActivity;->selfRankTextView:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/intermedia/LeaderboardActivity;->selfUsernameTextView:Landroid/widget/TextView;

    return-void
.end method
