.class final synthetic Lcom/intermedia/ChatPresenter$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/ChatPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/ChatPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/ChatPresenter$$Lambda$9;->arg$1:Lcom/intermedia/ChatPresenter;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/ChatPresenter$$Lambda$9;->arg$1:Lcom/intermedia/ChatPresenter;

    check-cast p1, Lcom/intermedia/model/HQUser;

    invoke-virtual {v0, p1}, Lcom/intermedia/ChatPresenter;->bridge$lambda$1$ChatPresenter(Lcom/intermedia/model/HQUser;)V

    return-void
.end method
