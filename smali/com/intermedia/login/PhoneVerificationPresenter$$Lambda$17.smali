.class final synthetic Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/login/PhoneVerificationPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$17;->arg$1:Lcom/intermedia/login/PhoneVerificationPresenter;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$17;->arg$1:Lcom/intermedia/login/PhoneVerificationPresenter;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->lambda$validateVerificationCodeInput$15$PhoneVerificationPresenter(Ljava/lang/Throwable;)V

    return-void
.end method
