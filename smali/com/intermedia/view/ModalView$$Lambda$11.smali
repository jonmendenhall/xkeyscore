.class final synthetic Lcom/intermedia/view/ModalView$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/view/ModalView;

.field private final arg$2:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/intermedia/view/ModalView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/ModalView$$Lambda$11;->arg$1:Lcom/intermedia/view/ModalView;

    iput-object p2, p0, Lcom/intermedia/view/ModalView$$Lambda$11;->arg$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/view/ModalView$$Lambda$11;->arg$1:Lcom/intermedia/view/ModalView;

    iget-object v1, p0, Lcom/intermedia/view/ModalView$$Lambda$11;->arg$2:Landroid/content/Context;

    check-cast p1, Lcom/intermedia/model/HQUser;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/view/ModalView;->lambda$share$6$ModalView(Landroid/content/Context;Lcom/intermedia/model/HQUser;)V

    return-void
.end method
