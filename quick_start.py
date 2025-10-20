# Import the solver，导入构造器
from agentflow.agentflow.solver import construct_solver

# Set the LLM engine name，设置LLM引擎名称
llm_engine_name = "deepseek-chat"

# Construct the solver，初始化 initializer、planner 、Memory、Executor、Solver
solver = construct_solver(llm_engine_name=llm_engine_name)

# Solve the user query
output = solver.solve("What is the capital of France?")
print(output["direct_output"])