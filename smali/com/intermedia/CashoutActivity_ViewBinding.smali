.class public final Lcom/intermedia/CashoutActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CashoutActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/CashoutActivity;


# direct methods
.method public constructor <init>(Lcom/intermedia/CashoutActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-virtual {p1}, Lcom/intermedia/CashoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/intermedia/CashoutActivity_ViewBinding;-><init>(Lcom/intermedia/CashoutActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/CashoutActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/intermedia/CashoutActivity_ViewBinding;->target:Lcom/intermedia/CashoutActivity;

    const-string v0, "field \'balanceAmountTextView\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0039

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/CashoutActivity;->balanceAmountTextView:Landroid/widget/TextView;

    const-string v0, "field \'progressBar\'"

    .line 29
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0146

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/intermedia/CashoutActivity;->progressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'cashoutButton\'"

    .line 30
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0055

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/CashoutActivity;->cashoutButton:Landroid/widget/Button;

    const-string v0, "field \'cashoutContainer\'"

    const v1, 0x7f0a0058

    .line 31
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/CashoutActivity;->cashoutContainer:Landroid/view/View;

    const-string v0, "field \'emailEditText\'"

    .line 32
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0138

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/intermedia/CashoutActivity;->emailEditText:Landroid/widget/EditText;

    const-string v0, "field \'loadingIndicator\'"

    .line 33
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0100

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/intermedia/CashoutActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/intermedia/CashoutActivity_ViewBinding;->target:Lcom/intermedia/CashoutActivity;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/intermedia/CashoutActivity_ViewBinding;->target:Lcom/intermedia/CashoutActivity;

    .line 42
    iput-object v1, v0, Lcom/intermedia/CashoutActivity;->balanceAmountTextView:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/intermedia/CashoutActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 44
    iput-object v1, v0, Lcom/intermedia/CashoutActivity;->cashoutButton:Landroid/widget/Button;

    .line 45
    iput-object v1, v0, Lcom/intermedia/CashoutActivity;->cashoutContainer:Landroid/view/View;

    .line 46
    iput-object v1, v0, Lcom/intermedia/CashoutActivity;->emailEditText:Landroid/widget/EditText;

    .line 47
    iput-object v1, v0, Lcom/intermedia/CashoutActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    return-void
.end method
