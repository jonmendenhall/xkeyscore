.class public final Lcom/google/android/gms/common/api/internal/zzce;
.super Ljava/lang/Object;


# instance fields
.field private final zzfuc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzce;->zzfuc:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzajj()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzce;->zzfuc:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    return v0
.end method

.method public final zzajk()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzce;->zzfuc:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method public final zzajl()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzce;->zzfuc:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public final zzajm()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzce;->zzfuc:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method
