.class public Lcom/intermedia/view/ChangeUsernameDialog$ViewHost_ViewBinding;
.super Ljava/lang/Object;
.source "ChangeUsernameDialog$ViewHost_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;


# direct methods
.method public constructor <init>(Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost_ViewBinding;->target:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    const-string v0, "field \'availableTextView\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a009a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->availableTextView:Landroid/widget/TextView;

    const-string v0, "field \'doneButton\'"

    .line 28
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a009b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->doneButton:Landroid/widget/Button;

    const-string v0, "field \'progressBar\'"

    .line 29
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a009d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->progressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'titleTextView\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a009e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->titleTextView:Landroid/widget/TextView;

    const-string v0, "field \'usernameEditText\'"

    .line 31
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a009c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameEditText:Landroid/widget/EditText;

    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700b6

    .line 35
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->grid2Dimen:I

    const v0, 0x7f11000a

    .line 36
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->changeUsernameString:Ljava/lang/String;

    const v0, 0x7f110030

    .line 37
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->sorryThatDidntWorkString:Ljava/lang/String;

    const v0, 0x7f110034

    .line 38
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->thatWorkedString:Ljava/lang/String;

    const v0, 0x7f11003c

    .line 39
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameString:Ljava/lang/String;

    const v0, 0x7f11003d

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameAlreadyTakenString:Ljava/lang/String;

    const v0, 0x7f11003e

    .line 41
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameAvailableString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost_ViewBinding;->target:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost_ViewBinding;->target:Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;

    .line 51
    iput-object v1, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->availableTextView:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->doneButton:Landroid/widget/Button;

    .line 53
    iput-object v1, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->progressBar:Landroid/widget/ProgressBar;

    .line 54
    iput-object v1, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->titleTextView:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/intermedia/view/ChangeUsernameDialog$ViewHost;->usernameEditText:Landroid/widget/EditText;

    return-void
.end method
