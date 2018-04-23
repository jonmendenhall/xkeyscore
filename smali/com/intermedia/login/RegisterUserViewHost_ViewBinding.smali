.class public Lcom/intermedia/login/RegisterUserViewHost_ViewBinding;
.super Ljava/lang/Object;
.source "RegisterUserViewHost_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/login/RegisterUserViewHost;


# direct methods
.method public constructor <init>(Lcom/intermedia/login/RegisterUserViewHost;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/intermedia/login/RegisterUserViewHost_ViewBinding;->target:Lcom/intermedia/login/RegisterUserViewHost;

    const-string v0, "field \'bgPatternImageView\'"

    .line 27
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0041

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserViewHost;->bgPatternImageView:Landroid/widget/ImageView;

    const-string v0, "field \'userImage\'"

    .line 28
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01e4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserViewHost;->userImage:Landroid/widget/ImageView;

    const-string v0, "field \'usernameEditText\'"

    .line 29
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a01e5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    const-string v0, "field \'referralCodeEditText\'"

    .line 30
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0156

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserViewHost;->referralCodeEditText:Landroid/widget/EditText;

    const-string v0, "field \'progressBar\'"

    .line 31
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0146

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserViewHost;->progressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'nextButton\'"

    .line 32
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0122

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserViewHost;->nextButton:Landroid/widget/Button;

    const-string v0, "field \'toolbar\'"

    .line 33
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0a001b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserViewHost;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'uploadAvatarPlusImageView\'"

    .line 34
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01e1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserViewHost;->uploadAvatarPlusImageView:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700b6

    .line 38
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/intermedia/login/RegisterUserViewHost;->dimenGrid2:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewHost_ViewBinding;->target:Lcom/intermedia/login/RegisterUserViewHost;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/intermedia/login/RegisterUserViewHost_ViewBinding;->target:Lcom/intermedia/login/RegisterUserViewHost;

    .line 48
    iput-object v1, v0, Lcom/intermedia/login/RegisterUserViewHost;->bgPatternImageView:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lcom/intermedia/login/RegisterUserViewHost;->userImage:Landroid/widget/ImageView;

    .line 50
    iput-object v1, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    .line 51
    iput-object v1, v0, Lcom/intermedia/login/RegisterUserViewHost;->referralCodeEditText:Landroid/widget/EditText;

    .line 52
    iput-object v1, v0, Lcom/intermedia/login/RegisterUserViewHost;->progressBar:Landroid/widget/ProgressBar;

    .line 53
    iput-object v1, v0, Lcom/intermedia/login/RegisterUserViewHost;->nextButton:Landroid/widget/Button;

    .line 54
    iput-object v1, v0, Lcom/intermedia/login/RegisterUserViewHost;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 55
    iput-object v1, v0, Lcom/intermedia/login/RegisterUserViewHost;->uploadAvatarPlusImageView:Landroid/widget/ImageView;

    return-void
.end method
