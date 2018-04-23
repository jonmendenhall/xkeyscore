.class Lcom/intermedia/view/ModalView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ModalView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/view/ModalView_ViewBinding;-><init>(Lcom/intermedia/view/ModalView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/view/ModalView_ViewBinding;

.field final synthetic val$target:Lcom/intermedia/view/ModalView;


# direct methods
.method constructor <init>(Lcom/intermedia/view/ModalView_ViewBinding;Lcom/intermedia/view/ModalView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/intermedia/view/ModalView_ViewBinding$1;->this$0:Lcom/intermedia/view/ModalView_ViewBinding;

    iput-object p2, p0, Lcom/intermedia/view/ModalView_ViewBinding$1;->val$target:Lcom/intermedia/view/ModalView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/intermedia/view/ModalView_ViewBinding$1;->val$target:Lcom/intermedia/view/ModalView;

    invoke-virtual {p1}, Lcom/intermedia/view/ModalView;->dismiss()V

    return-void
.end method
