.class final synthetic Lcom/intermedia/view/ModalView$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/view/ModalView;


# direct methods
.method constructor <init>(Lcom/intermedia/view/ModalView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/ModalView$$Lambda$7;->arg$1:Lcom/intermedia/view/ModalView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/ModalView$$Lambda$7;->arg$1:Lcom/intermedia/view/ModalView;

    invoke-virtual {v0, p1}, Lcom/intermedia/view/ModalView;->lambda$setThanksModal$2$ModalView(Landroid/view/View;)V

    return-void
.end method
