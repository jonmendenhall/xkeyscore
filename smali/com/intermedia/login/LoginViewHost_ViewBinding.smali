.class public Lcom/intermedia/login/LoginViewHost_ViewBinding;
.super Ljava/lang/Object;
.source "LoginViewHost_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/login/LoginViewHost;


# direct methods
.method public constructor <init>(Lcom/intermedia/login/LoginViewHost;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/login/LoginViewHost_ViewBinding;->target:Lcom/intermedia/login/LoginViewHost;

    const-string v0, "field \'bgPatternImageView\'"

    .line 24
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0041

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/login/LoginViewHost;->bgPatternImageView:Landroid/widget/ImageView;

    const-string v0, "field \'bgObjectsImageView\'"

    .line 25
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a003f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/login/LoginViewHost;->bgObjectsImageView:Landroid/widget/ImageView;

    const-string v0, "field \'getStartedButton\'"

    .line 26
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0046

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/login/LoginViewHost;->getStartedButton:Landroid/widget/Button;

    const-string v0, "field \'signingInProgressBar\'"

    .line 27
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0146

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/intermedia/login/LoginViewHost;->signingInProgressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'debugChannelTextView\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0091

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/intermedia/login/LoginViewHost;->debugChannelTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/intermedia/login/LoginViewHost_ViewBinding;->target:Lcom/intermedia/login/LoginViewHost;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/intermedia/login/LoginViewHost_ViewBinding;->target:Lcom/intermedia/login/LoginViewHost;

    .line 38
    iput-object v1, v0, Lcom/intermedia/login/LoginViewHost;->bgPatternImageView:Landroid/widget/ImageView;

    .line 39
    iput-object v1, v0, Lcom/intermedia/login/LoginViewHost;->bgObjectsImageView:Landroid/widget/ImageView;

    .line 40
    iput-object v1, v0, Lcom/intermedia/login/LoginViewHost;->getStartedButton:Landroid/widget/Button;

    .line 41
    iput-object v1, v0, Lcom/intermedia/login/LoginViewHost;->signingInProgressBar:Landroid/widget/ProgressBar;

    .line 42
    iput-object v1, v0, Lcom/intermedia/login/LoginViewHost;->debugChannelTextView:Landroid/widget/TextView;

    return-void
.end method
