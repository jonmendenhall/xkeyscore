.class public Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;
.super Ljava/lang/Object;
.source "CashoutConfirmationModal_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/view/CashoutConfirmationModal;

.field private view2131361878:Landroid/view/View;

.field private view2131361881:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/intermedia/view/CashoutConfirmationModal;Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;->target:Lcom/intermedia/view/CashoutConfirmationModal;

    const-string v0, "method \'dismissPopupWindow\'"

    const v1, 0x7f0a0056

    .line 26
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;->view2131361878:Landroid/view/View;

    .line 28
    new-instance v1, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding$1;-><init>(Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;Lcom/intermedia/view/CashoutConfirmationModal;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'dismissPopupWindow\'"

    const v1, 0x7f0a0059

    .line 34
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;->view2131361881:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding$2;-><init>(Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;Lcom/intermedia/view/CashoutConfirmationModal;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;->target:Lcom/intermedia/view/CashoutConfirmationModal;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;->target:Lcom/intermedia/view/CashoutConfirmationModal;

    .line 51
    iget-object v1, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;->view2131361878:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v0, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;->view2131361878:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;->view2131361881:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v0, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;->view2131361881:Landroid/view/View;

    return-void
.end method
