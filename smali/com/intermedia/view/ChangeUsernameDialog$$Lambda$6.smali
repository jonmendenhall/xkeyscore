.class final synthetic Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/view/ChangeUsernameDialog;


# direct methods
.method constructor <init>(Lcom/intermedia/view/ChangeUsernameDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$6;->arg$1:Lcom/intermedia/view/ChangeUsernameDialog;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$6;->arg$1:Lcom/intermedia/view/ChangeUsernameDialog;

    invoke-virtual {v0, p1}, Lcom/intermedia/view/ChangeUsernameDialog;->lambda$new$2$ChangeUsernameDialog(Ljava/lang/Object;)V

    return-void
.end method
