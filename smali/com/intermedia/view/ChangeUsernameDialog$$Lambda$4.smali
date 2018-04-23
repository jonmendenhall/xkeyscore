.class final synthetic Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/view/ChangeUsernameDialog;


# direct methods
.method constructor <init>(Lcom/intermedia/view/ChangeUsernameDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$4;->arg$1:Lcom/intermedia/view/ChangeUsernameDialog;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$4;->arg$1:Lcom/intermedia/view/ChangeUsernameDialog;

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {v0, p1}, Lcom/intermedia/view/ChangeUsernameDialog;->lambda$new$1$ChangeUsernameDialog(Lretrofit2/Response;)V

    return-void
.end method
