.class Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CashoutConfirmationModal_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;-><init>(Lcom/intermedia/view/CashoutConfirmationModal;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;

.field final synthetic val$target:Lcom/intermedia/view/CashoutConfirmationModal;


# direct methods
.method constructor <init>(Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;Lcom/intermedia/view/CashoutConfirmationModal;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding$2;->this$0:Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding;

    iput-object p2, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding$2;->val$target:Lcom/intermedia/view/CashoutConfirmationModal;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/intermedia/view/CashoutConfirmationModal_ViewBinding$2;->val$target:Lcom/intermedia/view/CashoutConfirmationModal;

    invoke-virtual {p1}, Lcom/intermedia/view/CashoutConfirmationModal;->dismissPopupWindow()V

    return-void
.end method
