.class final synthetic Lcom/google/android/gms/internal/zzclc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzjiv:Lcom/google/android/gms/internal/zzcla;

.field private final zzjiz:Lcom/google/android/gms/internal/zzchm;

.field private final zzjja:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcla;Lcom/google/android/gms/internal/zzchm;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclc;->zzjiv:Lcom/google/android/gms/internal/zzcla;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzclc;->zzjiz:Lcom/google/android/gms/internal/zzchm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzclc;->zzjja:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclc;->zzjiv:Lcom/google/android/gms/internal/zzcla;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclc;->zzjiz:Lcom/google/android/gms/internal/zzchm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclc;->zzjja:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcla;->zza(Lcom/google/android/gms/internal/zzchm;Landroid/app/job/JobParameters;)V

    return-void
.end method
