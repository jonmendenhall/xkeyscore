.class final synthetic Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;


# direct methods
.method private constructor <init>(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$0;->arg$1:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;

    return-void
.end method

.method static get$Lambda(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$0;-><init>(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/ChangeUsernameDialog$$Lambda$0;->arg$1:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;->usernameInput(Ljava/lang/CharSequence;)V

    return-void
.end method
