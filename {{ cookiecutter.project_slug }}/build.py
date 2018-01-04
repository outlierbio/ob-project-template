import luigi

class RunAll(luigi.Task):
	def run(self):
		pass

luigi.run(main_task_cls=RunAll, local_scheduler=True)