.class final synthetic Lcom/intermedia/ChatPresenter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/ChatPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/ChatPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/ChatPresenter$$Lambda$1;->arg$1:Lcom/intermedia/ChatPresenter;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/ChatPresenter$$Lambda$1;->arg$1:Lcom/intermedia/ChatPresenter;

    invoke-virtual {v0, p1}, Lcom/intermedia/ChatPresenter;->lambda$configure$1$ChatPresenter(Landroid/view/View;)V

    return-void
.end method
