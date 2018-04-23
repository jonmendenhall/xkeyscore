.class final synthetic Lcom/intermedia/ChatPresenter$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;


# instance fields
.field private final arg$1:Lcom/intermedia/ChatPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/ChatPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/ChatPresenter$$Lambda$4;->arg$1:Lcom/intermedia/ChatPresenter;

    return-void
.end method


# virtual methods
.method public onKeyboardDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/ChatPresenter$$Lambda$4;->arg$1:Lcom/intermedia/ChatPresenter;

    invoke-virtual {v0}, Lcom/intermedia/ChatPresenter;->bridge$lambda$0$ChatPresenter()V

    return-void
.end method
