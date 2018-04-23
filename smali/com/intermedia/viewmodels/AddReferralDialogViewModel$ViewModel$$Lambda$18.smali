.class final synthetic Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$18;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/user/UserRepository;


# direct methods
.method private constructor <init>(Lcom/intermedia/user/UserRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$18;->arg$1:Lcom/intermedia/user/UserRepository;

    return-void
.end method

.method static get$Lambda(Lcom/intermedia/user/UserRepository;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$18;

    invoke-direct {v0, p0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$18;-><init>(Lcom/intermedia/user/UserRepository;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$18;->arg$1:Lcom/intermedia/user/UserRepository;

    check-cast p1, Lcom/intermedia/model/HQUser;

    invoke-virtual {v0, p1}, Lcom/intermedia/user/UserRepository;->saveUser(Lcom/intermedia/model/HQUser;)V

    return-void
.end method
