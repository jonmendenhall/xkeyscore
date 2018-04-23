.class final Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;
.super Ljava/lang/Object;
.source "DaggerApplicationComponent.java"

# interfaces
.implements Lcom/intermedia/injection/BaseActivityComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BaseActivityComponentImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private aboutActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/AboutActivity;",
            ">;"
        }
    .end annotation
.end field

.field private baseInjectedActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/injection/BaseInjectedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private cashoutActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/CashoutActivity;",
            ">;"
        }
    .end annotation
.end field

.field private gameActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/GameActivity;",
            ">;"
        }
    .end annotation
.end field

.field private leaderboardActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/LeaderboardActivity;",
            ">;"
        }
    .end annotation
.end field

.field private loginActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/login/LoginActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mainActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/MainActivity;",
            ">;"
        }
    .end annotation
.end field

.field private phoneVerificationActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/login/PhoneVerificationActivity;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ConnectivitySnackbarPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private registerUserActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/login/RegisterUserActivity;",
            ">;"
        }
    .end annotation
.end field

.field private settingsActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/SettingsActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 618
    const-class v0, Lcom/intermedia/DaggerApplicationComponent;

    return-void
.end method

.method private constructor <init>(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    invoke-direct {p0, p2}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->initialize(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;Lcom/intermedia/DaggerApplicationComponent$1;)V
    .locals 0

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;-><init>(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;)V

    return-void
.end method

.method private initialize(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;)V
    .locals 13

    .line 651
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;->access$1800(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;)Lcom/intermedia/injection/BaseActivityModule;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object v0, v0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 652
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 650
    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseActivityModule_ProvideConnectivitySnackbarPresenterFactory;->create(Lcom/intermedia/injection/BaseActivityModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 654
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 657
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 658
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 659
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 660
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 661
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 662
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    .line 655
    invoke-static/range {v0 .. v6}, Lcom/intermedia/AboutActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->aboutActivityMembersInjector:Ldagger/MembersInjector;

    .line 664
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 667
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 668
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 669
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 670
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 671
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 672
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    .line 665
    invoke-static/range {v0 .. v6}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->baseInjectedActivityMembersInjector:Ldagger/MembersInjector;

    .line 674
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 677
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 678
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 679
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 680
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 681
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 682
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    .line 675
    invoke-static/range {v0 .. v6}, Lcom/intermedia/CashoutActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->cashoutActivityMembersInjector:Ldagger/MembersInjector;

    .line 684
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 687
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 688
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 689
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 690
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 691
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 692
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 693
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2300(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 694
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 695
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2400(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 696
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2500(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    .line 685
    invoke-static/range {v0 .. v10}, Lcom/intermedia/GameActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->gameActivityMembersInjector:Ldagger/MembersInjector;

    .line 698
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 701
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 702
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 703
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 704
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 705
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 706
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    .line 699
    invoke-static/range {v0 .. v6}, Lcom/intermedia/LeaderboardActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->leaderboardActivityMembersInjector:Ldagger/MembersInjector;

    .line 708
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 711
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 712
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 713
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 714
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 715
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 716
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 717
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 718
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 709
    invoke-static/range {v0 .. v8}, Lcom/intermedia/login/LoginActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->loginActivityMembersInjector:Ldagger/MembersInjector;

    .line 720
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 723
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 724
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 725
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 726
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 727
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 728
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 729
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2700(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 730
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2800(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 731
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2900(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 732
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 733
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$3000(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v11

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 734
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2500(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    .line 721
    invoke-static/range {v0 .. v12}, Lcom/intermedia/MainActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->mainActivityMembersInjector:Ldagger/MembersInjector;

    .line 736
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 739
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 740
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 741
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 742
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 743
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 744
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 745
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1000(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 737
    invoke-static/range {v0 .. v7}, Lcom/intermedia/login/PhoneVerificationActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->phoneVerificationActivityMembersInjector:Ldagger/MembersInjector;

    .line 747
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 750
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 751
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 752
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 753
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 754
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 755
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 756
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1000(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 757
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2700(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 758
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v9

    .line 748
    invoke-static/range {v0 .. v9}, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->registerUserActivityMembersInjector:Ldagger/MembersInjector;

    .line 760
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->provideConnectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 763
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 764
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 765
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 766
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object p1, p1, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 767
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 768
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 769
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2700(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 770
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2800(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 771
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2900(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    .line 772
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->access$2500(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    .line 761
    invoke-static/range {v0 .. v10}, Lcom/intermedia/SettingsActivity_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->settingsActivityMembersInjector:Ldagger/MembersInjector;

    return-void
.end method


# virtual methods
.method public inject(Lcom/intermedia/AboutActivity;)V
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->aboutActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/CashoutActivity;)V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->cashoutActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/GameActivity;)V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->gameActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/LeaderboardActivity;)V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->leaderboardActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/MainActivity;)V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->mainActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/SettingsActivity;)V
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->settingsActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/injection/BaseInjectedActivity;)V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->baseInjectedActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/login/LoginActivity;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->loginActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/login/PhoneVerificationActivity;)V
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->phoneVerificationActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/login/RegisterUserActivity;)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;->registerUserActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method
