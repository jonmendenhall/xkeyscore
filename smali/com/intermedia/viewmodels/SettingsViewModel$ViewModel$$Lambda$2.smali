.class final synthetic Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field static final $instance:Lio/reactivex/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$2;

    invoke-direct {v0}, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$2;-><init>()V

    sput-object v0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$2;->$instance:Lio/reactivex/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/intermedia/util/BooleanUtils;->negate(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
