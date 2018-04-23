.class final synthetic Lcom/intermedia/login/RegisterUserViewHost$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/login/RegisterUserViewModel$Inputs;


# direct methods
.method private constructor <init>(Lcom/intermedia/login/RegisterUserViewModel$Inputs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$7;->arg$1:Lcom/intermedia/login/RegisterUserViewModel$Inputs;

    return-void
.end method

.method static get$Lambda(Lcom/intermedia/login/RegisterUserViewModel$Inputs;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$7;

    invoke-direct {v0, p0}, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$7;-><init>(Lcom/intermedia/login/RegisterUserViewModel$Inputs;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewHost$$Lambda$7;->arg$1:Lcom/intermedia/login/RegisterUserViewModel$Inputs;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Lcom/intermedia/login/RegisterUserViewModel$Inputs;->referralCodeChanged(Ljava/lang/CharSequence;)V

    return-void
.end method
