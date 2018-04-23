.class public final Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "LeaderboardAdapter$LeaderboardViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;


# direct methods
.method public constructor <init>(Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;

    const-string v0, "field \'avatarImageView\'"

    .line 22
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->avatarImageView:Landroid/widget/ImageView;

    const-string v0, "field \'balanceTextView\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a00e9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->balanceTextView:Landroid/widget/TextView;

    const-string v0, "field \'rankTextView\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a00ef

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->rankTextView:Landroid/widget/TextView;

    const-string v0, "field \'usernameTextView\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a00f2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->usernameTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;

    .line 34
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->avatarImageView:Landroid/widget/ImageView;

    .line 35
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->balanceTextView:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->rankTextView:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$LeaderboardViewHolder;->usernameTextView:Landroid/widget/TextView;

    return-void
.end method
