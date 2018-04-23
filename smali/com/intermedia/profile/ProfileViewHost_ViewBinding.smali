.class public Lcom/intermedia/profile/ProfileViewHost_ViewBinding;
.super Ljava/lang/Object;
.source "ProfileViewHost_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/profile/ProfileViewHost;


# direct methods
.method public constructor <init>(Lcom/intermedia/profile/ProfileViewHost;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/profile/ProfileViewHost_ViewBinding;->target:Lcom/intermedia/profile/ProfileViewHost;

    const-string v0, "field \'backgroundImageView\'"

    .line 24
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0041

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->backgroundImageView:Landroid/widget/ImageView;

    const-string v0, "field \'avatarImageView\'"

    .line 25
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0036

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->avatarImageView:Landroid/widget/ImageView;

    const-string v0, "field \'debugChannelTextView\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0091

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->debugChannelTextView:Landroid/widget/TextView;

    const-string v0, "field \'nextGameContainer\'"

    .line 27
    const-class v1, Landroid/support/constraint/ConstraintLayout;

    const v2, 0x7f0a0123

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->nextGameContainer:Landroid/support/constraint/ConstraintLayout;

    const-string v0, "field \'gameLabel\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a00ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->gameLabel:Landroid/widget/TextView;

    const-string v0, "field \'nextTimeLabel\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0124

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->nextTimeLabel:Landroid/widget/TextView;

    const-string v0, "field \'prizeAmountLabel\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0143

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->prizeAmountLabel:Landroid/widget/TextView;

    const-string v0, "field \'watchButton\'"

    .line 31
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a01ed

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->watchButton:Landroid/widget/Button;

    const-string v0, "field \'textViewUsername\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01c3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->textViewUsername:Landroid/widget/TextView;

    const-string v0, "field \'weeklyRank\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->weeklyRank:Landroid/widget/TextView;

    const-string v0, "field \'balance\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0037

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->balance:Landroid/widget/TextView;

    const-string v0, "field \'lifeCountHeartView\'"

    .line 35
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00f5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/profile/ProfileViewHost;->lifeCountHeartView:Landroid/widget/ImageView;

    const-string v0, "field \'lifeCountTextView\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a00f6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/intermedia/profile/ProfileViewHost;->lifeCountTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/intermedia/profile/ProfileViewHost_ViewBinding;->target:Lcom/intermedia/profile/ProfileViewHost;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/intermedia/profile/ProfileViewHost_ViewBinding;->target:Lcom/intermedia/profile/ProfileViewHost;

    .line 46
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->backgroundImageView:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->avatarImageView:Landroid/widget/ImageView;

    .line 48
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->debugChannelTextView:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->nextGameContainer:Landroid/support/constraint/ConstraintLayout;

    .line 50
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->gameLabel:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->nextTimeLabel:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->prizeAmountLabel:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->watchButton:Landroid/widget/Button;

    .line 54
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->textViewUsername:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->weeklyRank:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->balance:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->lifeCountHeartView:Landroid/widget/ImageView;

    .line 58
    iput-object v1, v0, Lcom/intermedia/profile/ProfileViewHost;->lifeCountTextView:Landroid/widget/TextView;

    return-void
.end method
