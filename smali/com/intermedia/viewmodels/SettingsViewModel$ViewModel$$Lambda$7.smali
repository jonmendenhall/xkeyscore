.class final synthetic Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field static final $instance:Lio/reactivex/functions/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$7;

    invoke-direct {v0}, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$7;-><init>()V

    sput-object v0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$7;->$instance:Lio/reactivex/functions/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/intermedia/util/BooleanUtils;->isTrue(Z)Z

    move-result p1

    return p1
.end method
