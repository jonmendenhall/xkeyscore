.class public final Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "LeaderboardAdapter$TopThreeLeadersViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;


# direct methods
.method public constructor <init>(Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;

    const-string v0, "field \'firstLeaderBalanceTextView\'"

    .line 22
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a00bb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->firstLeaderBalanceTextView:Landroid/widget/TextView;

    const-string v0, "field \'firstLeaderImageView\'"

    .line 23
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00bd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->firstLeaderImageView:Landroid/widget/ImageView;

    const-string v0, "field \'firstLeaderUsernameTextView\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a00be

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->firstLeaderUsernameTextView:Landroid/widget/TextView;

    const-string v0, "field \'secondLeaderBalanceTextView\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0172

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->secondLeaderBalanceTextView:Landroid/widget/TextView;

    const-string v0, "field \'secondLeaderImageView\'"

    .line 26
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0174

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->secondLeaderImageView:Landroid/widget/ImageView;

    const-string v0, "field \'secondLeaderUsernameTextView\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0175

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->secondLeaderUsernameTextView:Landroid/widget/TextView;

    const-string v0, "field \'thirdLeaderBalanceTextView\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01c7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->thirdLeaderBalanceTextView:Landroid/widget/TextView;

    const-string v0, "field \'thirdLeaderImageView\'"

    .line 29
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01c9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->thirdLeaderImageView:Landroid/widget/ImageView;

    const-string v0, "field \'thirdLeaderUsernameTextView\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->thirdLeaderUsernameTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;

    .line 39
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->firstLeaderBalanceTextView:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->firstLeaderImageView:Landroid/widget/ImageView;

    .line 41
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->firstLeaderUsernameTextView:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->secondLeaderBalanceTextView:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->secondLeaderImageView:Landroid/widget/ImageView;

    .line 44
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->secondLeaderUsernameTextView:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->thirdLeaderBalanceTextView:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->thirdLeaderImageView:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$TopThreeLeadersViewHolder;->thirdLeaderUsernameTextView:Landroid/widget/TextView;

    return-void
.end method
