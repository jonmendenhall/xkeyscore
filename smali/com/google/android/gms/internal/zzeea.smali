.class final Lcom/google/android/gms/internal/zzeea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzecv;


# instance fields
.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeea;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzpu(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeea;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzedn;->zzb(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v1, "Auth token changed, triggering auth token refresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeea;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzedn;->zzc(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzebm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzebm;->zzpn(Ljava/lang/String;)V

    return-void
.end method
