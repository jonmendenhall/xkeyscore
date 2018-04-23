.class final synthetic Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field static final $instance:Lio/reactivex/functions/BiFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$16;

    invoke-direct {v0}, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$16;-><init>()V

    sput-object v0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$16;->$instance:Lio/reactivex/functions/BiFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->lambda$new$4$RegisterUserViewModel$ViewModel(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
