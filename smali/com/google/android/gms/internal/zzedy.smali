.class final Lcom/google/android/gms/internal/zzedy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmts:Lcom/google/android/gms/internal/zzeeo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzeeo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedy;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedy;->zzmts:Lcom/google/android/gms/internal/zzeeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedy;->zzmti:Lcom/google/android/gms/internal/zzedn;

    new-instance v1, Lcom/google/android/gms/internal/zzegf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzedy;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzedy;->zzmts:Lcom/google/android/gms/internal/zzeeo;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzeeo;->zzi(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzedy;->zzmts:Lcom/google/android/gms/internal/zzeeo;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzeeo;->zze(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzegf;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzeik;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedn;->zze(Lcom/google/android/gms/internal/zzedh;)V

    return-void
.end method
